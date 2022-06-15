### A Pluto.jl notebook ###
# v0.19.8

using Markdown
using InteractiveUtils

# ╔═╡ dcbe0593-9561-4ad0-b1e1-5a68789e3958
using PlutoUI, HypertextLiteral

# ╔═╡ 99be43de-abc1-49af-8a6b-cd3da5dcf931
# hideall
title = "My title";

# ╔═╡ 72a77c59-b55d-4543-bbce-e4b11c6d85d4
"""
+++
title = "$title"
+++
""" |> Base.Text

# ╔═╡ d8aeb1d5-7552-492b-bd49-549351e2d375
production = "PRODUCTION" in keys(ENV) ? true : false

# ╔═╡ 4ece3bcf-874a-4732-9fcd-fe5a69522400
project(title, image="/w3images/house5.jpg") = @htl("""
	<div class="w3-col l3 m6 w3-margin-bottom">
    <div class="w3-display-container">
		<div class="w3-display-topleft w3-black w3-padding">$(title)</div>
			<img src="/w3images/house5.jpg" alt="House" style="width:100%">
		</div>
	</div>
""")

# ╔═╡ 5184f113-8594-4a58-917b-357c201cdcb8
solutionist(name, spruch, pic_url) = @htl("""

<figure class="md:flex bg-slate-100 rounded-xl p-8 md:p-0 dark:bg-slate-800">
  <img class="w-24 h-24 md:w-48 md:h-auto md:rounded-none rounded-full mx-auto" src="$(pic_url)" alt="" width="384" height="512">
  <div class="pt-6 md:p-8 text-center md:text-left space-y-4">
    <blockquote>
      <p class="text-lg font-medium">
        “$(spruch)”
      </p>
    </blockquote>
    <figcaption class="font-medium">
      <div class="text-sky-500 dark:text-sky-400">
		$(name)
      </div>
      <div class="text-slate-700 dark:text-slate-500">
        Solutionist
      </div>
    </figcaption>
  </div>
</figure>
""")

# ╔═╡ 511d2d31-9590-499b-94ca-d72136bef8a7
(solutionist("noe", "nie frd fans", "https://static.wikia.nocookie.net/kingdom-hearts/images/3/32/Track_BBS.png/revision/latest?cb=20130503231240&path-prefix=de"))

# ╔═╡ 82fc1283-5a0c-43e9-8f4e-b558a494fd9a
some_cool_projects = [
	"Kränländ",
	"Diper.pics",
	"Dinimer.fans",
	"Wordle Guesser",
	"Sunny Coffee",
	"D'Charte lüge nie"
]

# ╔═╡ 47bf7c19-b90e-4928-956a-e444075bc565
solu = let
	url = "https://i.pinimg.com/originals/69/df/6c/69df6c7427f672402edcbaef9870a90c.png"
	data = read(download(url))
	PlutoUI.Show(MIME"image/jpg"(), data)
end

# ╔═╡ 3bdb4962-edaa-432f-bfb3-ad0235521832
noe = let
	url = "https://static.wikia.nocookie.net/kingdom-hearts/images/3/32/Track_BBS.png/revision/latest?cb=20130503231240&path-prefix=de"
	data = read(download(url))
	PlutoUI.Show(MIME"image/jpg"(), data)
end

# ╔═╡ b8e84022-ed34-4358-b31c-481f79f78bc4
tinu = let
	url = "https://static.wikia.nocookie.net/kingdom-hearts/images/4/46/Trick_BBS.png/revision/latest?cb=20130503231241&path-prefix=de"
	data = read(download(url))
	PlutoUI.Show(MIME"image/jpg"(), data)
end

# ╔═╡ 6349dd84-36e9-4807-853e-d7325da7e459
sam = let
	url = "https://static.wikia.nocookie.net/kingdom-hearts/images/7/79/Tick_BBS.png/revision/latest?cb=20130503231240&path-prefix=de"
	data = read(download(url))
	PlutoUI.Show(MIME"image/jpg"(), data)
end

# ╔═╡ 0719887e-3649-4393-afdc-9eb7b1b67340
@htl("""
<head>
$(production ? @htl("""<link rel="stylesheet" href="/css/main.css">""") : @htl("<script src=\"https://cdn.tailwindcss.com\"></script>"))
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

$(embed_display(solu))

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>le</b></span> <span class="w3-hide-small w3-text-light-grey">Solution</span></h1>
  </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Project Section -->
  <div class="w3-container w3-padding-32" id="projects">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Projects</h3>
  </div>
	<div class="w3-row-padding">
		$([
		project(item)
			
		for item in some_cool_projects])
	</div>
	$([ @htl("""
	  	<div class="w3-row-padding">
			$([@htl("""
			<div class="w3-col l3 m6 w3-margin-bottom">
      			<div class="w3-display-container">
        		<div class="w3-display-topleft w3-black w3-padding">$(item)</div>
        			<img src="/w3images/house5.jpg" alt="House" style="width:100%">
      			</div>
    		</div>
			""")
			# elements per row = 4
			for item in some_cool_projects[i+(i-1)*4:min(length(some_cool_projects),i*4)]
			])
		</div>
	""") for i in 1:2])


  <!-- About Section -->
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
    <p> the bois mitte fiese projects
    </p>
  </div>
   $(solutionist("noe", "nie frd fans", "https://static.wikia.nocookie.net/kingdom-hearts/images/3/32/Track_BBS.png/revision/latest?cb=20130503231240&path-prefix=de"))

  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col l3 m6 w3-margin-bottom">
      $(embed_display(tinu))
      <h3>le Tinu</h3>
      <p class="w3-opacity">Solutionist</p>
      <p>Schönä...</p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      $(embed_display(sam))
      <h3>le Säm</h3>
      <p class="w3-opacity">Solutionist</p>
      <p>Zieh nä!</p>
    </div>
    </div>
  </div>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contact</h3>
    <p>Chum cho lütä, aues angere wird ignoriert</p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND MESSAGE
      </button>
    </form>
  </div>
</body>
</html>
"""
)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
HypertextLiteral = "~0.9.4"
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0044b23da09b5608b4ecacb4e5e6c6332f833a7e"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═99be43de-abc1-49af-8a6b-cd3da5dcf931
# ╟─72a77c59-b55d-4543-bbce-e4b11c6d85d4
# ╟─dcbe0593-9561-4ad0-b1e1-5a68789e3958
# ╠═0719887e-3649-4393-afdc-9eb7b1b67340
# ╠═d8aeb1d5-7552-492b-bd49-549351e2d375
# ╠═4ece3bcf-874a-4732-9fcd-fe5a69522400
# ╠═5184f113-8594-4a58-917b-357c201cdcb8
# ╠═511d2d31-9590-499b-94ca-d72136bef8a7
# ╠═82fc1283-5a0c-43e9-8f4e-b558a494fd9a
# ╠═47bf7c19-b90e-4928-956a-e444075bc565
# ╠═3bdb4962-edaa-432f-bfb3-ad0235521832
# ╠═b8e84022-ed34-4358-b31c-481f79f78bc4
# ╠═6349dd84-36e9-4807-853e-d7325da7e459
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
