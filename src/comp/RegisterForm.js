import {useState} from 'react';
import {Link, useHistory} from 'react-router-dom';
import axios from 'axios';
const RegisterForm = () => {
  const [username, setUsername] = useState('');
  const [name, setName] = useState('');
  const [surname, setSurname] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPass, setConfirmPass] = useState('');
  const [register, setRegister] = useState(false);
  const history = useHistory();
  //send the data to the server
  const handelRegister = async () => {
    //send data to the register api
    await axios.post(`/users/register`, {
      user_username: username,
      user_name: name,
      user_surname: surname,
      user_email: email,
      user_password: password,
      user_password_confirm: confirmPass
    }).then(res => res.json()).then(data => {console.log(data)}).catch(err => console.log(err));
    setRegister(true);
  }
  if(register){
    history.push('/');
  }
  return ( 
    <div className="registerform">
        <div className="row">
          <div className="col-sm-8 mx-auto">
            <h1>Register</h1>
            <div className="row">
              <div className="col-md-12">
                <label>User Name</label>
                <input 
                type="text" 
                className="form-control" 
                placeholder="username" 
                onChange={(e)=>setUsername(e.target.value)}
                />
              </div>
              <div className="col-md-12">
                <label>Name</label>
                <input 
                type="text" 
                className="form-control" 
                placeholder="Name" 
                onChange={(e)=>setName(e.target.value)}
                />
              </div>
              <div className="col-md-12">
                <label>Surname</label>
                <input 
                type="text" 
                className="form-control" 
                placeholder="Surname" 
                onChange={(e)=>setSurname(e.target.value)}
                />
              </div>
              <div className="col-md-12">
                <label>Email address</label>
                <input 
                type="email" 
                className="form-control" 
                placeholder="Email" 
                onChange={(e)=>setEmail(e.target.value)}
                />
              </div>
              <div className="col-md-12">
                <label>Password</label>
                <input 
                type="password" 
                className="form-control" 
                onChange={(e)=>setPassword(e.target.value)}
                />
              </div>
              <div className="col-md-12">
                <label>Confirm Password</label>
                <input 
                type="password" 
                className="form-control" 
                onChange={(e)=>setConfirmPass(e.target.value)}
                />
              </div>
              <div className="col-md-12 mt-2">
                <button className="btn btn-primary" onClick={handelRegister}>Register</button>
              </div>
            </div>
          </div>
          <div className="col-sm-8 mx-auto mt-3 border-top">
            <p>You already have an account? <Link to="/">Login</Link></p>
          </div>
        </div>
    </div>
   );
}
 
export default RegisterForm;