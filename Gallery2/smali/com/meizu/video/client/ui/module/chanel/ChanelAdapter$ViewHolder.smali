.class Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mChannelImage:Landroid/widget/ImageView;

.field mChannelTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter$ViewHolder;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
