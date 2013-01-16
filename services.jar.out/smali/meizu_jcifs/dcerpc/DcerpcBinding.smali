.class public Lmeizu_jcifs/dcerpc/DcerpcBinding;
.super Ljava/lang/Object;
.source "DcerpcBinding.java"


# static fields
.field private static INTERFACES:Ljava/util/HashMap;


# instance fields
.field endpoint:Ljava/lang/String;

.field major:I

.field minor:I

.field options:Ljava/util/HashMap;

.field proto:Ljava/lang/String;

.field server:Ljava/lang/String;

.field uuid:Lmeizu_jcifs/dcerpc/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 33
    sget-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "srvsvc"

    invoke-static {}, Lmeizu_jcifs/dcerpc/msrpc/srvsvc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "lsarpc"

    invoke-static {}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "samr"

    invoke-static {}, Lmeizu_jcifs/dcerpc/msrpc/samr;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "netdfs"

    invoke-static {}, Lmeizu_jcifs/dcerpc/msrpc/netdfs;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "proto"
    .parameter "server"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 48
    iput-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->uuid:Lmeizu_jcifs/dcerpc/UUID;

    .line 53
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static addInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "syntax"

    .prologue
    .line 41
    sget-object v0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 79
    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "key"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .prologue
    .line 58
    const-string v3, "endpoint"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const-string v4, "\\pipe\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sget-object v3, Lmeizu_jcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    iget-object v4, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, iface:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 65
    .local v0, c:I
    const/16 v3, 0x2e

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 66
    .local v2, p:I
    new-instance v3, Lmeizu_jcifs/dcerpc/UUID;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmeizu_jcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->uuid:Lmeizu_jcifs/dcerpc/UUID;

    .line 67
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->major:I

    .line 68
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->minor:I

    .line 77
    .end local v0           #c:I
    .end local v1           #iface:Ljava/lang/String;
    .end local v2           #p:I
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v3, Lmeizu_jcifs/dcerpc/DcerpcException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad endpoint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmeizu_jcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_1
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 76
    :cond_2
    iget-object v3, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, ret:Ljava/lang/String;
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, key:Ljava/lang/Object;
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, val:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    goto :goto_0

    .line 96
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #val:Ljava/lang/Object;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    return-object v2
.end method
