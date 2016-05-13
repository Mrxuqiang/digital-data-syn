/*
================================================================================
��ṹ����:TB_CONBE
��ṹ����:��ͬ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBE;
drop index AK_TB_CONBE;
drop table TB_CONBE;
create table TB_CONBE  (
   CONBE_ID             INTEGER                         not null,  /*��ͬID              */
   CONBE001             INTEGER                         not null,  /*��˾ID              */
   CONBE002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONBE003             VARCHAR2(30)                    not null,  /*��ͬ��              */
   CONBE004             NUMBER(6,1)                     not null,  /*�汾��              */
   CONBE005             DATE                            not null,  /*ǩ������            */
   CONBE006             VARCHAR2(30)                            ,  /*�Է�ǩԼ��          */
   CONBE007             INTEGER                         not null,  /*��ͬ����ID          */
   CONBE008             INTEGER                         not null,  /*��Ӫ�̻�ID          */
   CONBE009             INTEGER                         not null,  /*�����̻�ID          */
   CONBE010             INTEGER                         not null,  /*̯λID              */
   CONBE011             DATE                            not null,  /*��������            */  #modify ouwx 2010/2/26
   CONBE012             DATE                            not null,  /*����ֹ��            */
   CONBE013             INTEGER                         not null,  /*���ʽID          */
   CONBE014             INTEGER,                                   /*չ�ʵ�ID            */
   CONBE015             NUMBER(5),                                 /*��ǰ�տ�����        */
   CONBE016             VARCHAR2(1),                               /*�Ƿ������          */
   CONBE017             VARCHAR2(1),                               /*POSʹ�÷�ʽ         */
   CONBE018             INTEGER,                                   /*���ʽID          */
   CONBE019             NUMBER(5),                                 /*��������(��)        */
   CONBE020             NUMBER(12,2),                              /*���ɽ���            */
   CONBE021             INTEGER,                                   /*��ǩ������ͬID      */
   CONBE022             INTEGER                         not null,  /*ҵ����ԱID          */
   CONBE023             VARCHAR2(255),                             /*��ע                */
   CONBE024             DATE,                                      /*��ֹ����            */
   CONBE025             VARCHAR2(1)                     not null,  /*״̬                */
   CONBE026             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONBE027             VARCHAR2(30),                              /*ǩ�˵���            */
   CONBE028             VARCHAR2(1),                               /*ǩ����              */
   CONBE029             INTEGER,                                   /*¼����ID            */
   CONBE030             DATE,                                      /*¼������            */
   CONBE031             INTEGER,                                   /*�����ID            */
   CONBE032             DATE,                                      /*�������            */
   CONBE033             VARCHAR2(80),                              /*�̻�ȫ��            */
   CONBE034             VARCHAR2(30),                              /*������              */
   CONBE035             VARCHAR2(30),                              /*�����˵绰          */
   CONBE036             VARCHAR2(30),                              /*����                */
   CONBE037             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   CONBE038             INTEGER                                 ,  /*��Ӫ����ID          */
   CONBE039             INTEGER                         not null,  /*��Ӫ����ID          */
   CONBE040             INTEGER                                 ,  /*��ӪС��ID          */
   CONBE041             INTEGER                         not null,  /*��Ʒ��ID            */
   CONBE042             VARCHAR2(80),                              /*�ĵ����            */
   CONBE043             VARCHAR2(1)                     not null,  /*̯λ����            */
   CONBE044             INTEGER                         not null,  /*ҵ����ID          */
   CONBE045             VARCHAR2(60),                              /*ǩԼ�ص�            */
   CONBE046             INTEGER                         not null,  /*¥��ID              */
   CONBE047             INTEGER                         not null,  /*¥��ID              */
   CONBE048             INTEGER                         not null,  /*˰��ID              */ 
   CONBE049             DATE                            not null,  /*��������            */  #modify ouwx 2010/2/26
   CONBE050             NUMBER(5),                                 /*�Զ�����(��)        */  add ouwx 2010/12/05
   CONBE051             NUMBER(5),                                 /*��ǰ��������        */  add ouwx 2010/12/05
   CONBE052             DATE,					   /*�������ִ����      */  add ouwx 2010/12/05
   CONBE053             INTEGER,                                   /*��������ID          */  add ouwx 2011/11/22
   CONBE054             VARCHAR2(800),                             /*��ͬ˵��            */  add ouwx 2011/12/21
   CONBE055             INTEGER,                                   /*��ͬ�ȼ�ID          */  add gaoxl 2011/12/29
   CONBE056             VARCHAR2(40),                              /*��Ӫ���̼��        */  add ouwx 2012/04/09   
   CONBE057             VARCHAR2(40),                              /*������̼��        */  add ouwx 2012/04/09   
   CONBE058             INTEGER                         not null,  /*Ʒ��ID              */
   CONBE059             DATE                            not null,  /*��ֹʱ��            */
   CONBE060             NUMBER(22,2),                              /*��ͬ����            */ 
   CONBE061             VARCHAR2(30),                              /*��˾����            */
   CONBE062             VARCHAR2(60),                             /*���ⷽע���ַ����סַ��            */
   CONBE063             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�            */
   CONBE064             VARCHAR2(30),                             /*���ⷽ���֤���루��֯��������֤��            */
   CONBE065             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�-��ϵ��ʽ            */
   CONBE066             VARCHAR2(30),                             /*���ⷽ��ϵ����            */
   CONBE067             VARCHAR2(60),                             /*���ⷽ��ϵ��ַ            */
   CONBE068             VARCHAR2(30),                             /*���ⷽ��ϵ�绰            */
   CONBE069             VARCHAR2(60),                             /*������ע���ַ����סַ��            */
   CONBE070             VARCHAR2(30),                             /*���������������ˣ������ˣ�            */
   CONBE071             VARCHAR2(30),                             /*���������֤���루��֯��������֤��            */
   CONBE072             VARCHAR2(30),                             /*���������������ˣ������ˣ�-��ϵ��ʽ            */
   CONBE073             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ�            */
   CONBE074             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ����֤            */
   CONBE075             VARCHAR2(30),                  not null,  /*��ҵ����             */
   CONBE076             VARCHAR2(13),                             /*SAP��ͬ��            */
   CONBE079             VARCHAR2(100),                             /*���ƺ�           */
   CONBE080             VARCHAR2(1),                               /*�����˿�            */ 
   CONBE081             VARCHAR2(1),                               /*�۸�����            */ 
   CONBE082             NUMBER(22,2),                              /*����ۿ���            */ 
   CONBE083             NUMBER(22,2),                              /*��׼Ӧ���ʱ���            */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   constraint PK_TB_CONBE primary key (CONBE_ID)
);
create unique index AK_TB_CONBE on TB_CONBE (CONBE002,CONBE003);
create sequence SEQ_TB_CONBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBE to public;
grant index  on TB_CONBE to public;
grant update on TB_CONBE to public; 
grant delete on TB_CONBE to public;  
grant insert on TB_CONBE to public; 
grant select on SEQ_TB_CONBE to public;   