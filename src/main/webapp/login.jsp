<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center min-h-screen bg-gray-100 dark:bg-gray-900">

<div class="w-full max-w-md p-6 bg-white rounded-lg shadow-lg dark:bg-gray-800">
    <h2 class="text-2xl font-bold text-center text-gray-900 dark:text-white mb-6">Welcome to SportFlow</h2>

    <!-- Submit the form directly to the LoginServlet -->
    <form action="LoginServlet" method="post" class="max-w-md mx-auto">
        <div class="relative z-0 w-full mb-5 group">
            <input type="text" name="nom" id="nom" class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" placeholder=" " required />
            <label for="nom" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">UserName</label>
        </div>

        <div class="relative z-0 w-full mb-5 group">
            <input type="password" name="password" id="password" class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer" placeholder=" " required />
            <label for="password" class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Password</label>
        </div>

        <div class="flex justify-between items-center mb-5">
            <div>
                <input type="checkbox" id="remember" class="mr-2">
                <label for="remember" class="text-sm text-gray-600 dark:text-gray-400">Remember me</label>
            </div>
            <a href="#" class="text-sm text-blue-600 dark:text-blue-400 hover:underline">Forgot password?</a>
        </div>

        <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Login</button>
    </form>

    <!-- Error message display (if any) -->
    <p class="mt-4 text-center text-gray-600 dark:text-gray-300">
        Don't have an account? <a href="#" class="text-blue-500 hover:underline">Sign Up</a>
    </p>

    <!-- Display error message if login fails -->
    <div class="text-red-500 text-center mt-4">
        <%= request.getParameter("error") != null ? "Invalid username or password!" : "" %>
    </div>
</div>

</body>
</html>
