import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    };
  }

  handleChange() {

  }

  handleSubmit() {

  }

  render() {

    return(
    <form>
      <input onChange={this.handleChange()} type="text" value={this.state.searchTerm}></input>
      <button onClick={this.handleSubmit()}>Submit</button>
    </form>);
  }

}

export default GiphysSearch;
