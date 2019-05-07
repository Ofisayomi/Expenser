using Newtonsoft.Json;

namespace AccountTransact.Models.ViewModel {
    [JsonObject (MemberSerialization.OptOut)]
    public class TokenResponseModel {
        public string Token { get; set; }
        public int Expiration { get; set; }
        public string refresh_token { get; set; }
    }
}