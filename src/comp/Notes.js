const Notes = ({notes}) => {
  return ( 
    <div className="notes">
      <h1>Notes</h1>
      {notes.map(note => (
        <div key={note.id}>
          <h3>{note.title}</h3>
          <p>{note.body}</p>
        </div>
      ))}
    </div>
   );
}
 
export default Notes;