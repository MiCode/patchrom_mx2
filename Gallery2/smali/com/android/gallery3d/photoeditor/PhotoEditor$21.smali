.class Lcom/android/gallery3d/photoeditor/PhotoEditor$21;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveSharedPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$21;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$21;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->savePhoto()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 821
    return-void
.end method
