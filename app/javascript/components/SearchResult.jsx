import React from 'react';

export default ({ result }) => (
  <a className="item" href={`/films/${result.id}`}>
    <div className="middle aligned content">
      <div className="header">{result.title}</div>
      <div className="meta">{result.description}</div>
    </div>
  </a>
);