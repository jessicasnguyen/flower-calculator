import { useState } from 'react'
import { Routes, Route, useParams } from 'react-router-dom'

import './App.css'
import Navbar from './components/Navbar'
import Add from './pages/Add'
import Flowers from './pages/Flowers'
import Home from './pages/Home'
import Update from './pages/Update'

function App() {

  return (
    <div className="App">
      <Navbar />

      <>
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/flowers' element={<Flowers />} />
          <Route path='/flowers/add' element={<Add />} />
          <Route path='/flowers/:id' element={<Update />} />
        </Routes>
      </>

    </div>
  )
}

export default App
