/*
================================================================================
��ṹ����:TB_PROEC
��ṹ����:ֵ���¼������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROEC;
drop index AK_TB_PROEC;
drop table TB_PROEC;
create table TB_PROEC  (
   PROEC_ID             INTEGER                         not null,  /*ֵ���¼��ID	 */
   PROEC001             INTEGER                         not null,  /*����		 */
   PROEC002             VARCHAR2(30)                    not null,  /*ֵ�൥��		 */
   PROEC003             DATE                            not null,  /*ֵ������		 */
   PROEC004             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PROEC005             INTEGER                         not null,  /*ֵ�ಿ��ID		 */
   PROEC006             INTEGER                         not null,  /*ֵ����ԱID		 */
   PROEC007             INTEGER,				   /*��λID		 */
   PROEC008             INTEGER,				   /*�¼�����ID		 */
   PROEC009             VARHCAR2(30),				   /*�������� 		 */
   PROEC010             VARCHAR2(30),				   /*��ϵ�绰		 */
   PROEC011             VARCHAR2(1),				   /*�Ա�		 */
   PROEC012             INTEGER,				   /*����ID		 */
   PROEC013             VARCHAR2(100),				   /*��ϵ��ַ		 */
   PROEC014             VARCHAR2(100),				   /*�����ص�		 */
   PROEC015             DATE,					   /*����ʱ��		 */
   PROEC016             VARCHAR2(255),				   /*�¼���¼		 */
   PROEC017             VARCHAR2(255),				   /*������		 */
   PROEC018             VARCHAR2(255),                             /*��ע                */
   PROEC019             INTEGER,                                   /*¼����ID            */
   PROEC020             DATE,                                      /*¼������            */
   PROEC031             INTEGER,                                   /*�����ID            */
   PROEC032             DATE,                                      /*�������            */
   PROEC033             VARCHAR2(1)                     not null,  /*���״̬            */
   PROEC034             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PROEC035             VARCHAR2(30),                              /*ǩ�˵���            */
   PROEC036             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PROEC primary key (PROEC_ID)
);
create unique index AK_TB_PROEC on TB_PROEC (PROEC002,PROEC004);
create sequence SEQ_TB_PROEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEC to public;
grant index  on TB_PROEC to public;
grant update on TB_PROEC to public; 
grant delete on TB_PROEC to public;  
grant insert on TB_PROEC to public; 
grant select on SEQ_TB_PROEC to public;   

