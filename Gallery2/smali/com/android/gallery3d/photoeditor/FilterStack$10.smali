.class Lcom/android/gallery3d/photoeditor/FilterStack$10;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$10;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 361
    invoke-static {}, Lcom/android/gallery3d/photoeditor/filters/Filter;->releaseContext()V

    .line 363
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$10;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$600(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 364
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$10;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #setter for: Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;
    invoke-static {v1, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$302(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/Photo;)Lcom/android/gallery3d/photoeditor/Photo;

    .line 365
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$10;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$400(Lcom/android/gallery3d/photoeditor/FilterStack;)[Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$10;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$400(Lcom/android/gallery3d/photoeditor/FilterStack;)[Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    aput-object v3, v1, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method
