import {useState} from 'react';

const NewNote = () => {
  const [title, setTitle] = useState(['']);
  const [body, setBody] = useState(['']);
  const [submited, setSubmited] = useState(false);

  const handleSubmit = (e) => {
    e.preventDefault();
    setSubmited(true);
    console.log(title, body);
    setTimeout(() => {
      setSubmited(false);
    }, 3000);
  }
  return ( 
    <div className="newnote">
      <h1>New Note</h1>
      <form onSubmit={handleSubmit}>
        <div className="mb-3">
          <label className='form-label' htmlFor="">Title</label>
          <input className='form-control' value={title} onChange={(e)=>{setTitle(e.target.value)}}/>
        </div>
        <div className="md-3">
          <label className='form-label' htmlFor="">Body</label>
          <textarea className='form-control' value={body} onChange={(e)=>{setBody(e.target.value)}} cols="30" rows="10"></textarea>
        </div>
        <div className="md-3">
          {submited ? <button className='btn btn-secondary'>Submiting...</button> : <button className='btn btn-primary'>Submit</button>}
        </div>
      </form>
    </div>
  );
}
 
export default NewNote;