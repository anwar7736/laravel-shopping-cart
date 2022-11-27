    <!--Add Modal -->
    

    <div class="modal fade" id="addUserModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                <button type="button" class="close closeAddUser" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('user.store') }}" id="addUserForm">
                @csrf
                <div class="form-group">
                    <label for="name" class="col-form-label">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name...">
                    <span class="text-danger nameError"></span>
                </div>                
                <div class="form-group">
                    <label for="email" class="col-form-label">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email...">
                    <span class="text-danger emailError"></span>
                </div>                
                <div class="form-group">
                    <label for="password" class="col-form-label">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password...">
                    <span class="text-danger passwordError"></span>
                </div>                  
                 <div class="form-group">
                    <label for="password" class="col-form-label">Confirm Password:</label>
                    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Re-type password...">
                </div>                
                <div class="form-group">
                    <label for="" class="col-form-label">Gender:</label>
                    <label><input type="radio" value="Male" name="gender" class="gender" checked> Male</label>
                    <label><input type="radio" value="Female" name="gender" class="gender"> Female</label>
                    <label><input type="radio" value="Others" name="gender" class="gender"> Others</label>
                </div>                
                <div class="form-group">
                    <label for="" class="col-form-label">Gender:</label>
                    <select name="city" id="city" class="form-control">
                        <option value="Dhaka" selected>Dhaka</option>
                        <option value="Khulna">Khulna</option>
                        <option value="Rajshahi">Rajshahi</option>
                        <option value="Comilla">Comilla</option>
                        <option value="Sylhet">Sylhet</option>
                        <option value="Rangpur">Rangpur</option>
                        <option value="Dinajpur">Dinajpur</option>
                        <option value="Mymensingh">Mymensingh</option>
                    </select>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary closeAddUser" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-success saveBtn">Save</button>
                </div>
                </form>
            </div>
            </div>
        </div>
        </div>