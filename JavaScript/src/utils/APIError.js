const APIError =async(err,req,res,next)=>{
    err.message = err.message || "Internal server Error"
    err.statusCode = err.statusCode || 500
    console.log("-------- Error occured ----------")
    console.log(err.message)
    res.status(err.statusCode).json({success:false,message:err.message})
}
export default APIError