#! /bin/bash

function wrup_new_blog_content() 
{
	read -p "Write your blog post title : "  input 
    hugo new blog/$(echo $input | tr '[:upper:]' '[:lower:]' | tr ' ' '-' ; ).md;
}

function wrup_new_case_content() 
{
	read -p "Write your blog post title : "  input 
    hugo new case/$(echo $input | tr '[:upper:]' '[:lower:]' | tr ' ' '-' ; ).md;
}

function wrup_new_tutorial_content() 
{
	read -p "Write your blog post title : "  input 
    hugo new case/$(echo $input | tr '[:upper:]' '[:lower:]' | tr ' ' '-' ; ).md;
}



