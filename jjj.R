library(shiny)

# Define UI
ui <- fluidPage(
  tags$head(
    tags$title("Η Ομάδα μας"),
    tags$style(HTML("
      body {
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        color: #333;
      }
      .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px 40px;
        background-color: #ffffff;
        position: sticky;
        top: 0;
        z-index: 1000;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      }
      .header h1 {
        font-size: 2.5rem;
        font-weight: bold;
        margin: 0;
      }
      body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url('https://media.gettyimages.com/id/1773096023/video/floating-animated-viruses-on-white-background.jpg?s=640x640&k=20&c=9gbWa1gjoJUuOzLW503xqhb1mPn6vVv-96zIC88Vk4w=');
        background-size: cover;
        background-position: center;
        opacity: 0.3; 
        z-index: -1; 
      }
      .team-container {
        padding: 50px;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 30px;
        justify-items: center;
      }
      .team-member {
        position: relative;
        width: 200px;
        height: 250px;
        overflow: hidden;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        background: #fff;
        transition: transform 0.3s ease;
      }
      .team-member:hover {
        transform: scale(1.05);
      }
      .team-member img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: opacity 0.3s ease;
      }
      .info {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, rgba(76, 175, 80, 0.8), rgba(33, 150, 243, 0.8));
        color: #fff;
        opacity: 0;
        transition: opacity 0.3s ease;
        text-align: center;
      }
      .team-member:hover .info {
        opacity: 1;
      }
      .info h3 {
        margin: 5px 0 2px;
        font-size: 1.2rem;
      }
      .info .small-text {
        font-size: 0.8rem;
        margin: 0 0 10px;
      }
      .info p {
        margin: 0;
        font-size: 1rem;
      }
    "))
  ),
  
  # Header Section
  tags$header(class = "header",
              tags$h1("Η Ομάδα μας")),
  
  # Team Container
  tags$main(class = "team-container",
            # Generating Team Member Cards Dynamically
            lapply(1:11, function(i) {
              tags$div(class = "team-member",
                       tags$img(src = "https://via.placeholder.com/200x250", alt = paste("Member", i)),
                       tags$div(class = "info",
                                tags$h3(paste("Όνομα", i)),
                                tags$div(class = "small-text", "Περιγραφή"),
                                tags$p("Πεδίο Σπουδών"))
              )
            })
  )
)

# Define Server
server <- function(input, output, session) {}

# Run App
shinyApp(ui, server)

