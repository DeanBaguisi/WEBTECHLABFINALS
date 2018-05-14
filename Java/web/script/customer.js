function OpenPage()
                    {
                            var add = document.getElementById('name').value;
                            var url = 'search.jsp?name='+add;
                            $.get(url, function(response)
                            {
                                    $('#out').html(response);
                            });
                    }