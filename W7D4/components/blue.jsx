import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Indigo from './indigo';


class Blue extends React.Component {
  render() {
    return (
      <div>
        <h2 className="blue"></h2>
        {/* Links here */}
        <Link to='/blue' >Blue only</Link>
        <Link to='/blue/indigo' >Add indigo</Link>

        {/* Routes here */}
        <Route path="/red/yellow" component={Yellow} />

      </div>
    );
  }
};

export default Blue;
