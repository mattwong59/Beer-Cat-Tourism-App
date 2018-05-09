/* eslint-disable */
import React from 'react'
import { Link } from 'react-router-dom'

const Navigation = ({currentUser, userID}) => {
  let links = currentUser ?  (<React.Fragment>
        <div className="nav-item"><Link to={`/user/${userID}`} className="nav-a">My Profile</Link></div>
        <div className="nav-item"><Link to='/logout' className="nav-a">Logout</Link></div>
    </React.Fragment>)
    : (<React.Fragment>
      <div className="nav-item"><Link to="/signup" className="nav-a">Sign Up</Link></div>
      <div className="nav-item"><Link to='/login' className="nav-a">Login</Link></div>
  </React.Fragment>);
  
  return (
  <header>
    <nav className="nav-bar">
      <div className="nav">
        <div className="nav-item"><Link to='/about' className="nav-a">About</Link></div>
        <div className="nav-item"><Link to='/' className="nav-a">Tours</Link></div>
        <div><img className="nav-item logo" src="https://orig00.deviantart.net/8f65/f/2010/204/e/f/beer_cat_by_rongs1234.jpg" alt="avatar"/></div>
        {links}
      </div>
    </nav>
  </header>
  )
}


export default Navigation