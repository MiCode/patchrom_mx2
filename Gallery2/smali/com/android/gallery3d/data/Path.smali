.class public Lcom/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static sRoot:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/android/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter

    .prologue
    .line 95
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 96
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 98
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 99
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v2

    return-object v1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 122
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 145
    :goto_0
    return-object v5

    .line 123
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 124
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 128
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 132
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 133
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 134
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 135
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 137
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 138
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 140
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v2, v3, 0x1

    .line 142
    goto :goto_1

    .line 143
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 144
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 152
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 153
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 157
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 161
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 162
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 164
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 166
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 167
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 169
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v3, 0x1

    .line 171
    goto :goto_0

    .line 172
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 173
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter

    .prologue
    .line 40
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 48
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 45
    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObject()Lcom/android/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaObject;

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/android/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/android/gallery3d/data/Path;
    .locals 3

    .prologue
    .line 183
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    sget-object v2, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v0, v2, :cond_1

    .line 189
    iget-object p0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 191
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 107
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 108
    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v0, v3, :cond_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 108
    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 111
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 112
    add-int/lit8 v0, v1, -0x1

    .line 113
    :goto_1
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq p0, v1, :cond_1

    .line 114
    add-int/lit8 v1, v0, -0x1

    iget-object v4, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 113
    iget-object p0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    move v0, v1

    goto :goto_1

    .line 116
    :cond_1
    monitor-exit v2

    return-object v3

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 84
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 86
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 87
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
