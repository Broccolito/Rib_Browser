#This function will take in keyword and return html code in iframe format
crawling_xvideo = function(keyword = "newest", page_max = 1, suppress_printing = TRUE){
  
  #Glue vector of strings as one vector
  glue = function(string, collapse = ""){
    if(length(string) <= 1){
      return(string)
    }else{
      res = character()
      for(s in string){
        res = paste(res, s, collapse = collapse)
      }
      return(res)
    }
  }
  
  #Loop through all the page numbers
  search_url = vector()
  for(page_number in 1:page_max){
    search_url[page_number] = paste0("https://www.xvideos.com/?k=", keyword, "&p=", page_number)
  }
  
  #Download all the pages
  for(i in 1:page_max){
    
    if(!exists(paste0("temp", i, ".txt"))){
      download.file(url = search_url[i], destfile = paste0("temp", i, ".txt"), mode = "wb", quiet = TRUE)
    }
   
    if(!suppress_printing){
      cat(paste0("page ", i, " downloaded \n"))
    }
  }
  
  iframe_mat = vector()
  for(i in 1:page_max){
    
    #Read file
    suppressWarnings({
      html_in_text = readLines(paste0("temp", i, ".txt"))
    })
    
    html_in_text = glue(html_in_text)
    
    temp = unlist(strsplit(html_in_text, "thumb-inside\"><div class=\"thumb\"><a href=\""))
    temp_vec = vector()
    
    n = 1
    for(i in temp){
      temp_vec[n] =  unlist(strsplit(i, "\"><img src="))[1]
      n = n + 1 
    }
    
    temp_vec = temp_vec[-1]
    
    goto_url = paste0("https://www.xvideos.com", temp_vec)
    
    video_number = vector()
    n = 1
    for(i in goto_url){
      number = unlist(strsplit(i, "/video"))[2]
      number = unlist(strsplit(number, "/"))[1]
      number = as.numeric(number)
      video_number[n] = number
      n = n + 1
    }
    
    iframe_list = paste0(
      "<iframe src=\"https://www.xvideos.com/embedframe/",
      video_number,
      "\" frameborder=0 width=510 height=400 scrolling=yes allowfullscreen=allowfullscreen></iframe>"
    )
    
    iframe_mat = cbind(iframe_mat, iframe_list)
    
  }
  
  return(iframe_mat)
  
}
