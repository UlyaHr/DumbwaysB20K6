import './App.css';
import { BrowserRouter as Router, Route } from 'react-router-dom'
import Navbar from "./components/Navbar";
import Home from './pages/Home/Home';
import Upload from './pages'

function App() {
  return (
    <>
      <Navbar/>
      <Router>
        <Route path="/" exact render ={() => <Home />} />
        <Route path="/upload" exact render ={() => <Upload />} />
      </Router>
    </>
  );
}

export default App;
