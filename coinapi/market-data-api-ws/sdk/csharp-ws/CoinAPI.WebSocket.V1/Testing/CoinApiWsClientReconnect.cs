﻿using System;
using System.Net.WebSockets;
using System.Threading;

namespace CoinAPI.WebSocket.V1.Testing
{
    public class CoinApiWsClientReconnect : CoinApiWsClient
    {
        public CoinApiWsClientReconnect() : base()
        {
        }

        public void ForceReconnectUsedOnlyTestPurpose()
        {
            try
            {
                _client.CloseAsync(WebSocketCloseStatus.NormalClosure, nameof(ForceReconnectUsedOnlyTestPurpose), CancellationToken.None).Wait();
            }
            catch (Exception ex)
            {
                OnError(ex);
            }
        }
    }
}
