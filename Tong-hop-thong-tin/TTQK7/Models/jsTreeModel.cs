﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TTQK7.Models
{
    public class JsTreeModel
    {
        public int id;
        public string text;
        public int parentID;
        public List<JsTreeModel> children;
        public JsTreeModel()
        {
            children = new List<JsTreeModel>();
        }
    }
    
}