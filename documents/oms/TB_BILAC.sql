/*
20130807 add by gaoxl for add bilac032
*/

/*
================================================================================
��ṹ����:TB_BILAC
��ṹ����:�����⸶������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_BILAC;
drop index AK_TB_BILAC;
drop table TB_BILAC;
create table TB_BILAC  (
   BILAC_ID             INTEGER                         not null,  /*�����⸶��ID         */
   BILAC001             INTEGER                         not null,  /*�⸶����             */
   BILAC002             VARCHAR2(30)                    not null,  /*�⸶����             */
   BILAC003             DATE                            not null,  /*��������             */
   BILAC004             INTEGER                         not null,  /*Ͷ�ߵ���ID           */
   BILAC005             INTEGER ,                                  /*���۵���ID           */
   BILAC006             VARCHAR2(30),                              /*�˿�����             */
   BILAC007             VARCHAR2(30),                              /*�绰                 */
   BILAC008             VARCHAR2(255),                             /*��ַ                 */
   BILAC009             INTEGER,                                   /*Ӫ����֯             */
   BILAC010             INTEGER,                                   /*�̻�ID               */
   BILAC011             INTEGER,                                   /*չλID               */
   BILAC012             INTEGER,                                   /*��ͬID               */
   BILAC013             INTEGER,                                   /*Ʒ��ID               */
   BILAC014             VARCHAR2(1),                               /*�⸶����             */
   BILAC015             NUMBER(22,2),                              /*�⸶�ܶ�             */
   BILAC016             VARCHAR2(1),                               /*�⸶��ʽ             */
   BILAC017             VARCHAR2(1),                               /*�̻��ʱ���           */
   BILAC018             NUMBER(22,2),                              /*�ʱ�����           */
   BILAC019             VARCHAR2(1),                               /*�̳�����             */
   BILAC020             NUMBER(22,2),                              /*�̳����ѽ��         */
   BILAC021             VARCHAR2(1),                               /*����                 */
   BILAC022             NUMBER(22,2),                              /*�������             */
   BILAC023             VARCHAR2(80),                              /*��������˵��         */
   BILAC024             NUMBER(22,2),                              /*��֧�����           */
   BILAC025             NUMBER(22,2),                              /*���ջؽ��           */
   BILAC026             INTEGER,                                   /*������Ŀ             */
   BILAC027             INTEGER,                                   /*¼����               */
   BILAC028             DATE,                                      /*¼������             */
   BILAC029             VARCHAR2(1),                               /*����״̬             */
   BILAC030             INTEGER,                                   /*�����               */
   BILAC031             DATE,                                      /*�������             */ 
   BILAC032             INTEGER,                                   /*���õ���             */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                    /*����״̬             */
   constraint PK_TB_BILAC primary key (BILAC_ID)
);
create unique index AK_TB_BILAC on TB_BILAC (BILAC004,FLAG);
create sequence SEQ_TB_BILAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAC to public;
grant index  on TB_BILAC to public;
grant update on TB_BILAC to public; 
grant delete on TB_BILAC to public;  
grant insert on TB_BILAC to public; 
grant select on SEQ_TB_BILAC to public;   