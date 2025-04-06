import jwt from "jsonwebtoken";

export const googleCallback = async (req, res) => {
  const user = req.user;
  console.log(user);
  const token = jwt.sign(
    {
      id: user.id,
      email: user.emails[0].value,
    },
    process.env.JWT_SECRET,
    { expiresIn: "24h" }
  );

  res.send(`
    <html>
      <body>
        <script>
          window.opener.postMessage(${user}, "http://localhost:5173");
          setTimeout(() => window.close(), 100);
        </script>
        <p>Logging you in... you can close this tab.</p>
      </body>
    </html>
  `);

  // res.redirect(`http://localhost:5173/dashboard?token=${token}`);
};
