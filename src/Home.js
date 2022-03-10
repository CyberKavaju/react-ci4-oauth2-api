import {useState} from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Nav from './comp/Nav';
import NewNote from './comp/NewNote';
import Notes from "./comp/Notes";

const Home = () => {
  const [notes, setNotes] = useState([
    {id: 1, title: 'HTML is easy', body: 'and here is text telling you why'},
    {id: 2, title: 'CSS is easy', body: 'and here is text telling you why'},
    {id: 3, title: 'JS is easy', body: 'and here is text telling you why'},
    {id: 4, title: 'PHP is easy', body: 'and here is text telling you why'},
    {id: 5, title: 'PYTHON is easy', body: 'and here is text telling you why'}
  ]);
  return ( 
    <Router>
      <div className='container'>
        <Nav/>
        <Switch>
          <Route exact path="/">
            <Notes notes={notes}/>
          </Route>
          <Route path="/new">
            <NewNote/>
          </Route>
        </Switch>
      </div>
    </Router>
   );
}
 
export default Home;