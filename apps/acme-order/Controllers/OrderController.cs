using acme_order.Models;
using acme_order.Services;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using acme_order.Auth;
using acme_order.Response;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Net.Http.Headers;

namespace acme_order.Controllers
{

    [Route("order")]
    [ApiController]
    public class OrderController : ControllerBase
    {
        private readonly OrderService _orderService;

        public OrderController(OrderService orderService)
        {
            _orderService = orderService;
        }

        [HttpPost("add/{provider}/{userId}")]
        [ServiceFilter(typeof(AuthorizeResource))]
        public async Task<ActionResult<OrderCreateResponse>> Create(string userId, Order orderIn, string provider = "")
        {
            return await CreateOrder(userId, orderIn);
        }

        [HttpPost("add/{userId}")]
        [ServiceFilter(typeof(AuthorizeResource))]
        public async Task<ActionResult<OrderCreateResponse>> Create(string userId, Order orderIn)
        {
            return await CreateOrder(userId, orderIn);
        }

		private Task<OrderCreateResponse> CreateOrder(string userId, Order orderIn)
		{
            var authorization = HttpContext.Request.Headers[HeaderNames.Authorization].ToString();
            return _orderService.Create(userId, orderIn, authorization);
		}

        [HttpGet("all")]
        [ServiceFilter(typeof(AuthorizeResource))]
        public ActionResult<List<OrderResponse>> Get() =>
            _orderService.Get();

        [HttpGet("{provider}/{userId}")]
        [ServiceFilter(typeof(AuthorizeResource))]
        public ActionResult<List<OrderResponse>> Get(string userId, string provider = "")
		{
			return Get(userId);
		}

        [HttpGet("{userId}")]
        [ServiceFilter(typeof(AuthorizeResource))]
        public ActionResult<List<OrderResponse>> Get(string userId)
        {
            var orderList = _orderService.Get(userId);

            if (orderList == null || orderList.Count == 0)
            {
                return NotFound();
            }

            return orderList;
        }
    }
}