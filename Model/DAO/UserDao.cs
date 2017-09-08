using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.DAO
{
    public class UserDao
    {
        TinPhongDbContext db = null;
        public UserDao()
        {
            db = new TinPhongDbContext();

        }

        public int Login(string username, string password)
        {
            var user = db.Admins.FirstOrDefault(x => x.Email == username);

            if (user == null)
            {
                return -1;//không tồn tại
            }
            else
            {
                if (user.Status == false)
                {
                    return 0;//tài khoản bị khóa
                }
                else if (db.Admins.FirstOrDefault(x => x.Email == username && x.Password == password) != null)
                {
                    return 1;//đúng
                }
                else
                {
                    return 2;//mật khẩu sai
                }

            }
        }
        public Admin findByUsername(string username)
        {
            var a = db.Admins.FirstOrDefault(x => x.Email == username);
            return a;

        }

    }

}
