<div class="form-floating mb-3">
    <input type="number" class="form-control" id="username" name="username" placeholder="username" min="1"
        value="{{ old('username', $profile->username) }}" autofocus required>
    <label for="username" id="label_username">NIK</label>
    @error('username')
        <div class="small text-danger py-1">{{ $message }}</div>
    @enderror
</div>
<div class="form-floating mb-3">
    <input type="text" class="form-control" id="name" name="name" placeholder="name"
        value="{{ old('name', $profile->name) }}" required>
    <label for="name" id="label_name">Nama</label>
    @error('name')
        <div class="small text-danger py-1">{{ $message }}</div>
    @enderror
</div>
<div class="form-floating mb-3">
    <input type="password" class="form-control" id="password" name="password" placeholder="password"
        value="{{ old('password') }}">
    <label for="password">Password</label>
    @error('password')
        <div class="small text-danger py-1">{{ $message }}</div>
    @enderror
</div>
