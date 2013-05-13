.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

.field final synthetic val$mitem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iput-object p2, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;->val$mitem:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$11;->val$mitem:Landroid/view/MenuItem;

    #calls: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->onMenuItemSelect(Landroid/view/MenuItem;)V
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$3800(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;Landroid/view/MenuItem;)V

    .line 2098
    return-void
.end method
