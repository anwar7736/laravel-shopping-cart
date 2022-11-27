  <!--Update Modal -->
    

  <div class="modal fade" id="updateUserModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="updateUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateUserModalLabel">Edit User</h5>
                <button type="button" class="close closeupdateUser" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" action="#" id="updateUserForm">
                @csrf
                <div class="form-group">
                    <label for="name" class="col-form-label">Name:</label>
                    <input type="text" class="form-control" id="name2" name="name2" placeholder="Enter name...">
                    <span class="text-danger nameError2"></span>
                </div>                
                <div class="form-group">
                    <label for="email" class="col-form-label">Email:</label>
                    <input type="email" class="form-control" id="email2" name="email2" placeholder="Enter email...">
                    <span class="text-danger emailError2"></span>
                </div>                             
                <div class="form-group">
                    <label for="" class="col-form-label">Gender:</label>
                    <label><input type="radio" value="Male" name="gender2" class="gender2"> Male</label>
                    <label><input type="radio" value="Female" name="gender2" class="gender2"> Female</label>
                    <label><input type="radio" value="Others" name="gender2" class="gender2"> Others</label>
                </div>                
                <div class="form-group">
                    <label for="" class="col-form-label">Gender:</label>
                    <select name="city2" id="city2" class="form-control">
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
                    <button type="button" class="btn btn-secondary closeupdateUser" data-dismiss="modal">Close</button>
                    <input type="hidden" name="hiddenID" id="hiddenID">
                    <button type="submit" class="btn btn-success updateBtn">Update</button>
                </div>
                </form>
            </div>
            </div>
        </div>
        </div>