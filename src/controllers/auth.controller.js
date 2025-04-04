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
  res.redirect(`http://localhost:3000/dashboard?token=${token}`);
};
