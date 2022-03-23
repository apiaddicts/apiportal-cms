pipeline_template   = "template_default"

libraries {
    //npm {
    //    node_tool_name = "Node.12.16"
    //    directories_build    = ["."]
    //}  
    python

    ecr{
        image = "gobiernoapis-strapicms:latest"
    }

    deploy_to_nowhere

    email{
        to="victor.maita@rimac.com.pe,luis.torres@rimac.com.pe"
    }

}
application_environments {
    dev{
        aws {
            credentials_id = 'stock_vida'
            region  = 'us-east-2'            
            ecr{
                repository  = "477542548955.dkr.ecr.us-east-2.amazonaws.com"
            }
        }
    }
    prod{
        requireCredentials = false
        aws { 
            credentials_id = 'credentials_serverless_deploy_non_prod'
            region  = 'us-east-1'           
            ecr{
                repository  = "477542548955.dkr.ecr.us-east-1.amazonaws.com"
            }
        }
    }
}

