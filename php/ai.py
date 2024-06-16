import os

from groq import Groq

client = Groq(
    api_key="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",
)

chat_completion = client.chat.completions.create(
    messages=[
        {
            "role": "system",
            "content": "You are recommendation AI for skin health care. Answer the manager ask",
        },
        {
            "role": "user",
            "content": "Explain what is the best skin product to launch with recommendation AI!",
        }
    ],
    model="llama3-8b-8192",
)

print(chat_completion.choices[0].message.content)