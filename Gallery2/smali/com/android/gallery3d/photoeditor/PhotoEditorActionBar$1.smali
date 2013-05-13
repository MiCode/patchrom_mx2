.class Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$1;
.super Ljava/lang/Object;
.source "PhotoEditorActionBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 137
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, tip:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 147
    const/4 v1, 0x0

    return v1

    .line 142
    .end local v0           #tip:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tip:Ljava/lang/String;
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d010b
        :pswitch_0
    .end packed-switch
.end method
