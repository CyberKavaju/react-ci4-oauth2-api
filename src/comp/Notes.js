const Notes = ({notes}) => {
  return ( 
    <div className="notes">
      <h1>Notes</h1>
      {notes.map(note => (
        <div key={note.post_id}>
          <h3>{note.post_title}</h3>
          <p>{note.post_description}</p>
          <small>created: {notes.post_created}</small>
        </div>
      ))}
    </div>
   );
}
 
export default Notes;