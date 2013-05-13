.class Lcom/android/gallery3d/photoeditor/EffectsMenu$2;
.super Ljava/lang/Object;
.source "EffectsMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/EffectsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsMenu;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->access$000(Lcom/android/gallery3d/photoeditor/EffectsMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, tip:Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/meizu/util/ToastUtils;->showToast(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 103
    const/4 v1, 0x0

    return v1

    .line 98
    .end local v0           #tip:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsMenu$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsMenu;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->access$000(Lcom/android/gallery3d/photoeditor/EffectsMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tip:Ljava/lang/String;
    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d012f
        :pswitch_0
    .end packed-switch
.end method
