.class Lcom/android/gallery3d/photoeditor/PhotoEditor$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->setSystemActionBarOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

.field final synthetic val$customView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->val$customView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->val$customView:Landroid/view/View;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->enterDoodleEditMode(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/view/View;)V

    .line 220
    return-void
.end method
