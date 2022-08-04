

import 'package:flutter/material.dart';
class ApproveDisapproveRequest extends StatefulWidget {
  const ApproveDisapproveRequest({Key? key}) : super(key: key);

  @override
  State<ApproveDisapproveRequest> createState() => _ApproveDisapproveRequestState();
}

class _ApproveDisapproveRequestState extends State<ApproveDisapproveRequest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width*0.50,
              ),
              Center(child: Text("Student Name",style: TextStyle(fontSize: 27),),),
              Center(child: Text("johar Town to School")),
              Center(child: Text("Rs.5000 per month")),
              Center(child: Text("03023443543")),

              SizedBox(
                height: MediaQuery.of(context).size.width*0.20,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Approve")),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.02,
              ),
              ElevatedButton(onPressed: (){}, child: Text("DisApprove"))
            ],
          ),
        )
    );
  }
}
