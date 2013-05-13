.class Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;
.super Ljava/lang/Object;
.source "SambaClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/client/SambaClientManager$ListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanResults"
.end annotation


# instance fields
.field public addr:Ljava/lang/String;

.field public folderList:Ljava/lang/String;

.field final synthetic this$1:Lmeizu/samba/client/SambaClientManager$ListenerTransport;


# direct methods
.method public constructor <init>(Lmeizu/samba/client/SambaClientManager$ListenerTransport;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->this$1:Lmeizu/samba/client/SambaClientManager$ListenerTransport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->addr:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->folderList:Ljava/lang/String;

    .line 71
    return-void
.end method
