import { useState } from "react"

const App = () => {
  const [count, setCount] = useState(0)
  return (
    <div>
      <h1>App</h1>
      {count}
      <button onClick={() => setCount(count+1)}>add</button>

      <h2>Hello</h2>
    </div>
  )
}

export default App