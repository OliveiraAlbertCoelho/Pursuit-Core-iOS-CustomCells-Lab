import UIKit

class ViewController: UIViewController {

    var users = [User](){
        didSet{
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        loadUpUser()
        setConstraints()
    }
    lazy var tableView: UITableView = {
        let theTableView = UITableView()
        theTableView.dataSource = self
        theTableView.delegate = self
          theTableView.register(UserTableViewCell.self, forCellReuseIdentifier: "UserCell")
               return theTableView
    }()
    func setConstraints() {
          self.tableView.translatesAutoresizingMaskIntoConstraints = false
          self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
          self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
          self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
          self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
      }
    func loadUpUser(){
        UsersFetchingService.manager.getUsers { (result) in
            DispatchQueue.main.async {
                switch result{
                case .success(let user):
                    self.users = user
                case .failure(let error):
                print(error)
                }
            }
        }
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "UserCell", for:indexPath) as? UserTableViewCell else {return UITableViewCell()}
        let userData = users[indexPath.row]
        cell.userName.text = "\(userData.name.first) \(userData.name.last) "
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("h")
        let vc: UserDetailViewController = UserDetailViewController()
        vc.user = users[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

