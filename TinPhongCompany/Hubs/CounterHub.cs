using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;

namespace TinPhongCompany.Hubs
{
    public class CounterHub : Hub
    {
        static long counter = 1;
        public override Task OnConnected()
        {
            counter++;
            Clients.All.UpdateCount(counter);

            return base.OnConnected();

        }
        public override Task OnDisconnected(bool stopCalled)
        {
            counter--;
            Clients.All.UpdateCount(counter);
            return base.OnDisconnected(stopCalled);
        }
    }
}