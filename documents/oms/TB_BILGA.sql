/*
================================================================================
��ṹ����:TB_BILGA
��ṹ����:��������ۿ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILGA;
drop index AK_TB_BILGA;
drop table TB_BILGA;
create table TB_BILGA  (
   BILGA_ID             INTEGER                         not null,  /*��������ۿID     */
   BILGA001             INTEGER                         not null,  /*����ID               */
   BILGA002             VARCHAR2(30)                    not null,  /*�ۿ��             */
   BILGA003             DATE                            not null,  /*�ۿ�����             */
   BILGA004             INTEGER                         not null,  /*Ӫ����֯ID           */
   BILGA005             INTEGER                         not null,  /*ҵ����ID           */
   BILGA006             INTEGER                         not null,  /*ҵ����ԱID           */
   BILGA007             VARCHAR2(100),                             /*��Ӫ����             */
   BILGA008             VARCHAR2(100),                             /*��Ӫ����             */
   BILGA009             VARCHAR2(100),                             /*��ӪС��             */
   BILGA010             VARCHAR2(100),                             /*̯λ                 */
   BILGA011             DATE                            not null,  /*�ۿʼ����         */
   BILGA012             DATE                            not null,  /*�ۿ��������         */
   BILGA013             VARCHAR2(1)                     not null,  /*�ۿ�����             */
   BILGA014             VARCHAR2(100),                             /*ȯ��                 */
   BILGA015             NUMBER(12,2),                              /*���׶�               */
   BILGA016             NUMBER(12,2),                              /*�ۿ����%            */
   BILGA017             VARCHAR2(255),                             /*��ע                 */
   BILGA018             INTEGER,                                   /*¼����ID             */
   BILGA019             DATE,                                      /*¼������             */
   BILGA020             INTEGER,                                   /*�����ID             */
   BILGA021             DATE,                                      /*�������             */
   BILGA022             VARCHAR2(1)                     not null,  /*���״̬             */
   BILGA023             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   BILGA024             VARCHAR2(30),                              /*ǩ�˵���             */
   BILGA025             VARCHAR2(1),                               /*ǩ����               */
   BILGA026             INTEGER,                                   /*����ID               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILGA primary key (BILGA_ID)
);
create unique index AK_TB_BILGA on TB_BILGA (BILGA001,BILGA002);
create sequence SEQ_TB_BILGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILGA to public;
grant index  on TB_BILGA to public;
grant update on TB_BILGA to public; 
grant delete on TB_BILGA to public;  
grant insert on TB_BILGA to public; 
grant select on SEQ_TB_BILGA to public;   