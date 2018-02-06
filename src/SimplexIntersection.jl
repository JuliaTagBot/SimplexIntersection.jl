module SimplexIntersection

using SimplexSplitting

include("Circumsphere.jl")
include("barycentric-coordinates.jl")
include("geometry.jl")
include("heaviside.jl")
include("complementary.jl")
include("intersection-of-boundaries.jl")
include("intersection-of-boundaries-loop.jl")
include("some-vertex-in-circumsphere.jl")
include("Binary.jl")
include("sharing-a-face.jl")
include("QR.jl")
include("Update.jl")
include("polytope-generating-vertices.jl")
include("TriangulationPolytopeFaces.jl")
include("NullSpace.jl")
include("TriangulationNonSimplicialFaces.jl")
include("SimplexChecks.jl")
include("volume-computation.jl")
include("shared-vertices.jl")
include("simplexoperations.jl")
include("simplexintersect.jl")
include("init_functions.jl")

function __init__()

   # Trigger compilation of the most time consuming functions
   dim = 2
   reps = 1
   shared_vertex_intersection(dim, reps)
   nontrivial_intersection(dim, reps) # Triggers Delaunay triangulation and
end

export simplexintersection,
        childsimplex,
         SomeVertexInCircumsphere,
         BarycentricCoordinates,
         heaviside0,
        SharedVertices,
        SharedFaceVolume,
        SharedFaceVertices,
        IntersectionOfBoundaries,
        PolytopeGeneratingVertices,
        VolumeComputation,
        Circumsphere,
        issingular,
        radius,
        centroid,
        orientation,
        volume,
        Circumsphere,
        nontrivially_intersecting_simplices,
        simplices_sharing_vertices,
        intersecting_simplices,
        shared_vertex_intersection,
        nontrivial_intersection,
        QHull,
        IntersectionOfBoundaries_NoStorage,
        intersectingvertices
end #module
