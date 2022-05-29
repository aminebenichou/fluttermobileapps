Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: Color.fromARGB(255, 76, 15, 11),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'data',
              style: TextStyle(fontSize: 38.0),
            ),
            FlatButton(
                onPressed: () {},
                child: Text('button', style: TextStyle(fontSize: 38.0))),
            Row(
              children: [
                Checkbox(
                    value: true,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          this.setvalue = value;
                        });
                      }
                    }),
                Text('data', style: TextStyle(fontSize: 38.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
