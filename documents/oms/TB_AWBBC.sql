/*
================================================================================
��ṹ����:TB_AWBBC
��ṹ����:��ʱ��¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBBC;
drop index AK_TB_AWBBC;
drop table TB_AWBBC;
create table TB_AWBBC  (
   AWBBC_ID             INTEGER                         not null,   /*��ʱ��¼ID                */
   AWBBC001             INTEGER                         not null,   /*��ʱƾ֤ID                    */
   AWBBC002             NUMBER(6),                                  /*Ԥ���ֶ�                      */
   AWBBC003             VARCHAR2(255)                   not null,   /*ժҪ                      */
   AWBBC004             INTEGER                         not null,   /*��ĿID                    */
   AWBBC005             INTEGER                         not null,   /*����ID                    */
   AWBBC006             VARCHAR(20),                                /*���������ʶ              */
   AWBBC007             NUMBER(12,2),                               /*����                      */
   AWBBC008             NUMBER(5,4),                                /*����1                     */
   AWBBC009             NUMBER(5,4),                                /*����2                     */
   AWBBC010             NUMBER(18,3),                               /*�跽����                   */
   AWBBC011             NUMBER(16,2),                               /*ԭ�ҽ跽������             */
   AWBBC012             NUMBER(16,2),                               /*���ҽ跽������             */
   AWBBC013             NUMBER(16,2),                               /*���ҽ跽������             */
   AWBBC014             NUMBER(18,3),                               /*��������                   */
   AWBBC015             NUMBER(16,2),                               /*ԭ�Ҵ���������             */
   AWBBC016             NUMBER(16,2),                               /*���Ҵ���������             */
   AWBBC017             NUMBER(16,2),                               /*���Ҵ���������             */
   AWBBC018             VARCHAR2(255),                              /*��ע                       */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����               */                               
   CREATE_DATE          DATE,                                       /*��������                   */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                   */
   MODI_DATE            DATE,                                       /*�޸�����                   */
   FLAG                 NUMBER(1),                                  /*����״̬                   */
   constraint PK_TB_AWBBC primary key (AWBBC_ID)
);
create sequence SEQ_TB_AWBBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBC to public;
grant index  on TB_AWBBC to public;
grant update on TB_AWBBC to public; 
grant delete on TB_AWBBC to public;  
grant insert on TB_AWBBC to public; 
grant select on SEQ_TB_AWBBC to public;   