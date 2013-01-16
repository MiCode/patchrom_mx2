.class Lcom/android/server/pm/PackageManagerService$CopiedIterator;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopiedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/Iterator;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2962
    .local p0, this:Lcom/android/server/pm/PackageManagerService$CopiedIterator;,"Lcom/android/server/pm/PackageManagerService$CopiedIterator<TE;>;"
    .local p2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$CopiedIterator;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2960
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$CopiedIterator;->iterator:Ljava/util/Iterator;

    .line 2963
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2964
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2965
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2967
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$CopiedIterator;->iterator:Ljava/util/Iterator;

    .line 2968
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2971
    .local p0, this:Lcom/android/server/pm/PackageManagerService$CopiedIterator;,"Lcom/android/server/pm/PackageManagerService$CopiedIterator<TE;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$CopiedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 2979
    .local p0, this:Lcom/android/server/pm/PackageManagerService$CopiedIterator;,"Lcom/android/server/pm/PackageManagerService$CopiedIterator<TE;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$CopiedIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2975
    .local p0, this:Lcom/android/server/pm/PackageManagerService$CopiedIterator;,"Lcom/android/server/pm/PackageManagerService$CopiedIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
