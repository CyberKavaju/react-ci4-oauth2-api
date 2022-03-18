import axios from 'axios';
import { useEffect , useState} from 'react';
import { BrowserRouter as Router, Switch, Route, useHistory } from 'react-router-dom';
import Nav from './comp/Nav';
import NewNote from './comp/NewNote';
import Notes from "./comp/Notes";

const Home = () => {
  const [notes, setNotes] = useState(['']);
  const history = useHistory();
  const handleBlogs = () =>{
    const userInfo = JSON.parse(localStorage.getItem('user-info'));
    const config = {
      headers: {
        Authorization: 'Bearer ' + userInfo.access_token
      }
    };
    axios.get('/blogs', config)
    .then(res => res.data)
    .then(data => {setNotes(data); console.log(data)})
    .catch(err => console.log(err));
  }
  useEffect(() => {
    handleBlogs();
  }, []);
  const handleLogout = () => {localStorage.removeItem('user-info'); history.push('/');}
  return ( 
    <Router>
        <Nav data={handleLogout}/>
        <Switch>
          <div className="container">
          <Route path="/">
            <Notes notes={notes}/>
          </Route>
          <Route path="/home">
            <Notes notes={notes}/>
          </Route>
          <Route exact path="/new">
            <NewNote/>
          </Route>
          </div>
        </Switch>
    </Router>
   );
}
 
export default Home;