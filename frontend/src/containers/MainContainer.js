import React from 'react';

const recipesURL = 'http://localhost:3000/recipes'
export default class MainContainer extends React.Component {

    state = {
        recipes: [],
        ingredients: []
    }

    //This is to fill out the states of recipes
    componentDidMount() {
        fetch(recipesURL, {
            method: "GET"
        })
        .then(res=> res.json())
        .then(recipesData => {
            this.setState({
                recipes:recipesData
            })
        })
    }
  
  render(){
    return(
        <div>
            <h1>MainContainer</h1>
            {this.state.recipes? this.state.recipes.map(recipe => console.log(recipe)) : ''}
        </div>
    )
  }
}