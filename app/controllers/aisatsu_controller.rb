class AisatsuController < ApplicationController

    def myname
        case params["jikan"].to_i
        when  4..11
            if params["lang"] == "jpn"
                @msg = "おはよう　"
            else
                @msg = "good morning "
            end
        when  12..19
            if params["lang"] == "jpn"
                @msg = "こんにちは　"
            else
                @msg = "hello "
            end
        when  20..23,0..3
            if params["lang"] == "jpn"
                @msg = "こんばんは　"
            else
                @msg = "good evening "
            end
        end
        if params["chk_name"] == "true"
            @msg += params["name"]
            if params["lang"] == "jpn"
                @msg += "さん"
            end
        end
    end
    def keisan
        @atai1 =  params["atai1"].to_i
        @atai2 =  params["atai2"].to_i
    end
    def calc
        if request.post?
            @head = "答え：#{(params["input1"].to_i + params["input2"].to_i)}"
        else
            @head = "入力して下さい"
        end
    end
end
