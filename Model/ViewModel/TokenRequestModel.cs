namespace AccountTransact.Models.ViewModel {
    public class TokenRequestModel {
        public string Username { get; set; }
        public string Password { get; set; }
        public string refresh_token { get; set; }
        public string client_secret { get; set; }
        public string client_Id { get; set; }
        public string grant_type { get; set; }
    }
}