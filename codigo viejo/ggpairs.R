# VER. No pude hacer andar ggpairs

g <- df %>% select(select(precariedad, rango_etario, tamanio, complejidad) %>% 
                     ggpairs(title = "Correlograma de variables",
                             mapping = aes(colour= factor(precariedad)),
                             progress = FALSE, 
                             lower=list(combo=wrap("facethist", binwidth=0.8))) +
                     theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
                     theme_bw() +
                     scale_fill_brewer(palette="Set1") +
                     scale_color_brewer(palette="Set1")
                   
                   
                   g <- df %>% select(select(precariedad, rango_etario, tamanio, complejidad) %>%         
                                        ggpairs(., mapping = aes(colour = genero, alpha= 0.5), title = "Matriz de correlaciones",
                                                upper = list(continuous = wrap("cor", size = 2, hjust=0.5)), legend = 15) + 
                                        theme_bw() +
                                        theme(axis.text.x = element_text(angle=45, vjust=0.5), legend.position = "bottom") +
                                        theme(axis.title.y.right = element_text(size=4,face="bold"))        
                                      
                                      
                                      
                                      
                                      #este anda! pero como son variables categóricas no sé si aporta mucho. me parece mejor un chi test
                                      
                                      df %>% ggpairs(., aes(color = genero), 
                                                     upper = list(continuous = wrap("cor", size = 3, hjust=0.5)), legend = 25) + 
                                        theme_bw() +
                                        theme(axis.text.x = element_text(angle=45, vjust=0.5), legend.position = "bottom")