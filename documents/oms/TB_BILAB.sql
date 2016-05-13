/*
================================================================================
��ṹ����:TB_BILAB
��ṹ����:���õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILAB;
drop index AK_TB_BILAB;
drop table TB_BILAB;
create table TB_BILAB  (
   BILAB_ID             INTEGER                         not null,  /*���õ���ϸID         */
   BILAB001             INTEGER                         not null,  /*���õ�ID             */
   BILAB002             INTEGER                         not null,  /*����ID               */
   BILAB003             VARCHAR2(1)                     not null,  /*�ʿ�����             */
   BILAB004             INTEGER,                                   /*��ƿ�ĿID           */
   BILAB005             NUMBER(12,2)                    not null,  /*���ý��             */
   BILAB006             NUMBER(12,2)                    not null,  /*�������             */
   BILAB007             NUMBER(12,2)                    not null,  /*�ѳ���             */
   BILAB008             NUMBER(12,2)                    not null,  /*���ս��             */
   BILAB009             NUMBER(12,2)                    not null,  /*δ�ս��             */
   BILAB010             VARCHAR2(255),                             /*��ע                 */
   BILAB011             DATE,                                      /*��������             */
   BILAB012             DATE,                                      /*����ֹ��             */
   BILAB013             INTEGER,                                   /*�ο���ID             */
   BILAB014             VARCHAR2(16),                              /*�ο�����             */
   BILAB015             INTEGER,                                   /*��ͬ�ʵ�ID           */
   BILAB016             INTEGER,                                   /*δ֪                 */ 
   BILAB017             NUMBER(16,2),                              /*���˽�� (������)  */ 
   BILAB018             VARCHAR2(1),                               /*���ʽ             */   
   BILAB019             VARCHAR2(6),                               /*���������·�         */ add ouwx 2012/02/20 
   BILAB020             VARCHAR2(100),                             /*������               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                 /*����״̬             */
   constraint PK_TB_BILAB primary key (BILAB_ID)
);
create unique index AK_TB_BILAB on TB_BILAB (BILAB_ID,BILAB001,BILAB002);
create sequence SEQ_TB_BILAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAB to public;
grant index  on TB_BILAB to public;
grant update on TB_BILAB to public; 
grant delete on TB_BILAB to public;  
grant insert on TB_BILAB to public; 
grant select on SEQ_TB_BILAB to public;   