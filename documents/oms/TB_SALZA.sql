/*
================================================================================
��ṹ����:TB_SALZA
��ṹ����:���۵����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALZA;
drop index AK_TB_SALZA;
drop table TB_SALZA;
create table TB_SALZA  (
   SALZA_ID             INTEGER                         not null,  /*���۵����������ID */
   SALZA001             INTEGER                         not null,  /*���۵�ID           */
   SALZA002             INTEGER                                 ,  /*����ID           */
   SALZA003             VARCHAR2(3)                             ,  /*�������         */
   SALZA004             VARCHAR2(30)                            ,  /*��������         */
   SALZA005             INTEGER                                 ,  /*��˾ID           */
   SALZA006             VARCHAR2(16)                            ,  /*��˾����         */
   SALZA007             VARCHAR2(20)                            ,  /*��˾���         */
   SALZA008             INTEGER                                 ,  /*������֯ID       */
   SALZA009             VARCHAR2(16)                            ,  /*Ӫ����֯����     */
   SALZA010             VARCHAR2(30)                            ,  /*Ӫ����֯���     */
   SALZA011             INTEGER                                 ,  /*���۶���ID       */
   SALZA012             VARCHAR2(30)                            ,  /*���۶�����       */
   SALZA013             INTEGER                                 ,  /*����ƾ֤����ID   */
   SALZA014             VARCHAR2(4)                             ,  /*ƾ֤�������       */
   SALZA015             VARCHAR2(30)                            ,  /*ƾ֤��������       */
   SALZA016             VARCHAR2(1)                             ,  /*ƾ֤����ҵ������  */
   SALZA017             INTEGER                                 ,  /*̯λID           */
   SALZA018             VARCHAR2(100)                            ,  /*̯λ���           */
   SALZA019             VARCHAR2(100)                            ,  /*̯λ����           */
   SALZA020             INTEGER                                 ,  /*���޺�ͬID       */
   SALZA021             VARCHAR2(30)                            ,  /*��ͬ��              */
   SALZA022             INTEGER,                                   /*�����̻�ID       */
   SALZA023             VARCHAR2(10) ,                             /*���̺�             */
   SALZA024             VARCHAR2(255)   ,                           /*���̼��           */
   SALZA025             VARCHAR2(255),                              /*��˰�˵ǼǺ�        */
   SALZA026             VARCHAR2(30),                              /*�����˵绰          */
   SALZA027             VARCHAR2(80),                              /*�̻�ȫ��            */
   SALZA028             INTEGER,                                   /*��Ʒ��ID(ϵ��)      */
   SALZA029             VARCHAR2(10),                              /*ϵ�д���           */
   SALZA030             VARCHAR2(100),                              /*ϵ������           */
   SALZA031             INTEGER,                                   /*��ӪС��ID       */
   SALZA032             VARCHAR2(10),                              /*��ӪС�����       */
   SALZA033             VARCHAR2(30),                              /*��ӪС������       */
   SALZA034             INTEGER,                                   /*�ͻ�ID           */
   SALZA035             VARCHAR2(10) ,                             /*�ͻ���             */
   SALZA036             VARCHAR2(40)   ,                           /*�ͻ����           */
   SALZA037             INTEGER,                                   /*�ͻ���ͬ��ID     */
   SALZA038             VARCHAR2(30),                              /*�ͻ���ͬ��          */
   SALZA039             INTEGER,                                   /*�ͻ��ͻ�ID       */
   SALZA040             VARCHAR2(10) ,                             /*�ͻ��ͻ���             */
   SALZA041             VARCHAR2(40)   ,                           /*�ͻ��ͻ����           */
   SALZA042             INTEGER,                                   /*����Ա           */
   SALZA043             VARCHAR2(12),                              /*����Ա�ʺ�           */
   SALZA044             VARCHAR2(30),                              /*����Ա������         */
   SALZA045             INTEGER,                                   /*�ۿ���           */
   SALZA046             VARCHAR2(12),                              /*�ۿ����ʺ�           */
   SALZA047             VARCHAR2(30),                              /*�ۿ���������         */
   SALZA048             INTEGER,                                   /*֤������ID       */
   SALZA049             VARCHAR2(4),                               /*֤�����ʹ���       */
   SALZA050             VARCHAR2(30),                              /*֤����������       */
   SALZA051             INTEGER,                                   /*¼����ID         */
   SALZA052             VARCHAR2(12),                              /*¼�����ʺ�           */
   SALZA053             VARCHAR2(30),                              /*¼����������         */
   SALZA054             INTEGER,                                   /*�����ID         */
   SALZA055             VARCHAR2(12),                              /*������ʺ�           */
   SALZA056             VARCHAR2(30),                              /*�����������         */
   SALZA057             VARCHAR2(255),                             /*��ӡ��ע           */
   SALZA058             VARCHAR2(100),                             /*���ƺ�           */
   FLAG                 NUMBER,                                    /*����״̬         */
   constraint PK_TB_SALZA primary key (SALZA_ID)
);
create unique index AK_TB_SALZA on TB_SALZA (SALZA001);
create sequence SEQ_TB_SALZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZA to public;
grant index  on TB_SALZA to public;
grant update on TB_SALZA to public; 
grant delete on TB_SALZA to public;  
grant insert on TB_SALZA to public; 
grant select on SEQ_TB_SALZA to public;   