class GeminiController < ApplicationController
  def index
    user_input_text = params[:text]
    request_body = {
      "contents": [
        {
          "parts": [
            {
              "text": "Can you suggest places for me to visit in #{user_input_text}? I would like the response to be formatted using JSON with name, description, img_url, and address.",
            },
          ],
        },
      ],
    }.to_json
    response = HTTP.headers(content_type: "application/json")
                   .post("https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=#{ENV["GEMINI_API_KEY"]}",
                         body: request_body)
    data = response.parse
    console.log(data)
    json_string = data["candidates"][0]["content"]["parts"][0]["text"].delete_prefix("```json").delete_suffix("```")
    render json: JSON.parse(json_string)
  end
end
