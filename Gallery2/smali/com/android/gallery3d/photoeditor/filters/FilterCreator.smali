.class public Lcom/android/gallery3d/photoeditor/filters/FilterCreator;
.super Ljava/lang/Object;
.source "FilterCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/gallery3d/photoeditor/filters/Filter;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final filterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/android/gallery3d/photoeditor/filters/FilterCreator;,"Lcom/android/gallery3d/photoeditor/filters/FilterCreator<TT;>;"
    .local p1, filterClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;->filterClass:Ljava/lang/Class;

    .line 33
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/android/gallery3d/photoeditor/filters/FilterCreator;,"Lcom/android/gallery3d/photoeditor/filters/FilterCreator<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;->filterClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/filters/Filter;

    .line 39
    .local v1, filter:Lcom/android/gallery3d/photoeditor/filters/Filter;,"TT;"
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    return-object v1

    .line 41
    .end local v1           #filter:Lcom/android/gallery3d/photoeditor/filters/Filter;,"TT;"
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    .local p0, this:Lcom/android/gallery3d/photoeditor/filters/FilterCreator;,"Lcom/android/gallery3d/photoeditor/filters/FilterCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/gallery3d/photoeditor/filters/Filter;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/android/gallery3d/photoeditor/filters/FilterCreator;,"Lcom/android/gallery3d/photoeditor/filters/FilterCreator<TT;>;"
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;->filterClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/photoeditor/filters/Filter;

    check-cast v0, [Lcom/android/gallery3d/photoeditor/filters/Filter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    .local p0, this:Lcom/android/gallery3d/photoeditor/filters/FilterCreator;,"Lcom/android/gallery3d/photoeditor/filters/FilterCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;->newArray(I)[Lcom/android/gallery3d/photoeditor/filters/Filter;

    move-result-object v0

    return-object v0
.end method
