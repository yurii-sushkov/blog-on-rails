import React from "react"
import PropTypes from "prop-types"
class Article extends React.Component {
  render () {
    return (
      <React.Fragment>
        <h1>{this.props.title}</h1>
        <p>{this.props.author}</p>
        <small>Last update: {this.props.lastUpdated}</small>
        <div>{this.props.body}</div>
      </React.Fragment>
    );
  }
}

Article.propTypes = {
  title: PropTypes.string,
  author: PropTypes.string,
  body: PropTypes.string,
  published: PropTypes.bool,
  lastUpdated: PropTypes.string
};
export default Article
